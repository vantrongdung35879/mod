.class public Lcom/tencent/gcloud/msdk/api/account/MSDKAccount;
.super Ljava/lang/Object;
.source "MSDKAccount.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getReceiveEmail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "account",
            "accountType",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native getRegisterStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "account",
            "accountType",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native getVerifyCodeStatus(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "account",
            "accountType",
            "verifyCode",
            "codeType",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native modify(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "verifyType",
            "account",
            "accountType",
            "verifyCode",
            "verifyCodeModify",
            "password",
            "accountModify",
            "accountTypeModify",
            "areaCodeModify",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native requestVerifyCode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "account",
            "codeType",
            "accountType",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native resetPassword(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "verifyType",
            "account",
            "password",
            "oldPassword",
            "accountType",
            "verifyCode",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native setAccountObserver(Lcom/tencent/gcloud/msdk/api/account/MSDKAccountObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public static native verifyPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "account",
            "password",
            "accountType",
            "langType",
            "areaCode",
            "extraJson"
        }
    .end annotation
.end method
