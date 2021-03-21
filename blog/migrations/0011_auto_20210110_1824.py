# Generated by Django 3.1.3 on 2021-01-10 18:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0010_auto_20210110_1701'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='blog',
            name='read_num',
        ),
        migrations.CreateModel(
            name='ReadNum',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('read_num', models.IntegerField(default=0)),
                ('readnum_with_blog', models.OneToOneField(on_delete=django.db.models.deletion.DO_NOTHING, to='blog.blog')),
            ],
        ),
    ]