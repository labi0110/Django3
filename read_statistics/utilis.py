import datetime
from django.shortcuts import render,get_object_or_404
from django.contrib.contenttypes.models import ContentType
from django.utils import timezone
from django.db.models import Sum
from .models import ReadNum,ReadDetail



def read_statistics_once_read(request,obj):
    ct = ContentType.objects.get_for_model(obj)
    key= '%s_%s_read'%(ct.model,obj.pk)
    #总阅读数
    if not request.COOKIES.get(key):
        readnum,created = ReadNum.objects.get_or_create(content_type=ct, object_id=obj.pk)
        # 计数+1
        readnum.read_num += 1
        readnum.save()

        #当天阅读数+1
        date =timezone.now().date()
        readDetail,created =ReadDetail.objects.get_or_create(content_type=ct, object_id=obj.pk, date=date)
        readDetail.read_num +=1
        readDetail.save()
        
    return key

def get_seven_days_read_data(content_type):
    today = timezone.now().date()
    read_nums =[]
    dates=[]
    for i in range(6,-1 ,-1):
        date = today -datetime.timedelta(days=i)
        dates.append(date.strftime('%m/%d'))
        read_details = ReadDetail.objects.filter(content_type=content_type,date=date)
        result =read_details.aggregate(read_num_sum= Sum('read_num'))  #对read_num字段进行求和
        read_nums.append(result['read_num_sum'] or 0)
    return dates,read_nums

def get_today_hot_data(content_type):
    today=timezone.now().date()
    read_details=ReadDetail.objects.filter(content_type=content_type,date=today).order_by('-read_num')
    return  read_details[:7] #取前七篇

def get_yesterday_hot_data(content_type):
    today = timezone.now().date()
    yesterday = today-datetime.timedelta(days= 1)
    read_details = ReadDetail.objects.filter(content_type=content_type, date=yesterday).order_by('-read_num')
    return read_details[:7]


