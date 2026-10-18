.class public Lcom/tencent/gcloud/msdk/api/login/MSDKLogin;
.super Ljava/lang/Object;
.source "MSDKLogin.java"


# static fields
.field public static MSDK_LOGIN_TYPE:Ljava/lang/String; = "login_type"

.field public static MSDK_NORMAL_LOGIN:I = 0x0

.field public static MSDK_SCAN_LOGIN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native autoLogin()V
.end method

.method public static native bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "permissions",
            "subChannel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native bindUI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraJson"
        }
    .end annotation
.end method

.method public static native canBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "channelInfo",
            "extraJson"
        }
    .end annotation
.end method

.method public static native channelPermissionAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "permissions",
            "subChannel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "permissions",
            "subChannel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native getConnectRet()Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;
.end method

.method public static native getLoginRet()Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;
.end method

.method public static native login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "permissions",
            "subChannel",
            "extraJson"
        }
    .end annotation
.end method

.method public static native loginUI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraJson"
        }
    .end annotation
.end method

.method public static native loginWithConfirmCode(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actionType",
            "confirmCode",
            "extraJson"
        }
    .end annotation
.end method

.method public static native logout(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "subChannel",
            "channelOnly"
        }
    .end annotation
.end method

.method public static native queryUserInfo()V
.end method

.method public static native resetGuest()V
.end method

.method public static native setConnectObserver(Lcom/tencent/gcloud/msdk/api/login/MSDKConnectObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public static native setLoginObserver(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public static native switchUser(ZLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ifSwitchLogin",
            "extraJson"
        }
    .end annotation
.end method

.method public static native unConnect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation
.end method
