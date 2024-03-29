# Generated by Django 4.2 on 2023-05-17 03:57

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Chat",
            fields=[
                ("idx", models.AutoField(primary_key=True, serialize=False)),
                ("userid", models.CharField(max_length=50)),
                ("query", models.CharField(max_length=500)),
                ("answer", models.CharField(max_length=1000)),
                ("intent", models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name="Member",
            fields=[
                (
                    "userid",
                    models.CharField(max_length=50, primary_key=True, serialize=False),
                ),
                ("passwd", models.CharField(max_length=500)),
                ("name", models.CharField(max_length=20)),
                ("address", models.CharField(max_length=20)),
                ("tel", models.CharField(max_length=20, null=True)),
            ],
        ),
    ]
