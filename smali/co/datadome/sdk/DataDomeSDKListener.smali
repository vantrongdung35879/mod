.class public abstract Lco/datadome/sdk/DataDomeSDKListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lco/datadome/sdk/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptchaCancelled()V
    .locals 0

    return-void
.end method

.method public onCaptchaDismissed()V
    .locals 0

    return-void
.end method

.method public onCaptchaLoaded()V
    .locals 0

    return-void
.end method

.method public onCaptchaSuccess()V
    .locals 0

    return-void
.end method

.method public onDataDomeResponse(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated, don\'t use or implement it"
    .end annotation

    return-void
.end method

.method public onHangOnRequest(I)V
    .locals 0

    return-void
.end method

.method public willDisplayCaptcha()V
    .locals 0

    return-void
.end method
