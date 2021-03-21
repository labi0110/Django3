from django.contrib.contenttypes.models import ContentType
from django.shortcuts import render,redirect
from django.urls import reverse
from django.http import JsonResponse
from django.http import JsonResponse
from django.core.mail import send_mail
from django.db.models import ObjectDoesNotExist
from django.conf import settings
from .models import Comment
from .forms import CommentForm


def ErrorResponse(code, message):
    data = {}
    data['status'] = 'ERROR'
    data['code'] = code
    data['message'] = message
    return JsonResponse(data)

def update_comment(request):
    # referer = request.META.get('HTTP_REFERER', reverse('home'))
    user = request.user
    comment_form = CommentForm(request.POST,user=user) #关键字传参
    data={}
    if comment_form.is_valid():
        comment=Comment() #实例化
        comment.user=comment_form.cleaned_data['user']
        comment.text=comment_form.cleaned_data['text']
        comment.content_object=comment_form.cleaned_data['content_object']
        parent = comment_form.cleaned_data["parent"]
        if not parent is None:
            comment.root = parent.root if not parent.root is None else parent
            comment.parent=parent
            comment.reply_to=parent.user
        comment.save()
         #发送邮件通知
        comment.send_mail()

        #返回数据
        data['status']='SUCCESS'
        data['username']=comment.user.get_nickname_or_username()
        data['comment_date']=comment.comment_date.timestamp()
        data['text']=comment.text
        data['content_type']=ContentType.objects.get_for_model(comment).model #获得model对应的字符串
        if not parent is None:
            data["reply_to"] = comment.reply_to.get_nickname_or_username()
        else:
            data["reply_to"] = ""
        data["pk"]=comment.pk
        data["root_pk"]=comment.root.pk if not comment.root is None else ""
        
    else:
        # return render(request, 'error.html', {'message': comment_form.errors, 'redirect_to': referer})
        data['status']='error'
        data['message'] =list(comment_form.errors.values())[0][0]
    return JsonResponse(data)


