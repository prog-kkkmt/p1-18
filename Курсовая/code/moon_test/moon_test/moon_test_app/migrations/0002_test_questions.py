# Generated by Django 3.2 on 2021-04-14 14:15

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('moon_test_app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='test',
            name='questions',
            field=models.TextField(default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
