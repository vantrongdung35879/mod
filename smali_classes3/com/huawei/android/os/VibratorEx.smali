.class public Lcom/huawei/android/os/VibratorEx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VibratorExMy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p1, "VibratorExMy"

    const-string v0, "getHwParameter"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public isSupportHwVibrator(Ljava/lang/String;)Z
    .locals 1

    const-string p1, "VibratorExMy"

    const-string v0, "isSupportHwVibrator"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setHwVibrator(Ljava/lang/String;)V
    .locals 1

    const-string p1, "VibratorExMy"

    const-string v0, "setHwVibrator"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
