.class public Lcom/tencent/gcloud/msdk/core/MSDKErrorCode;
.super Ljava/lang/Object;
.source "MSDKErrorCode.java"


# static fields
.field public static final API_DEPRECATED:I = 0x17

.field public static final APP_NOT_SUPPORT:I = 0x10

.field public static final CANCEL:I = 0x2

.field public static final CONNECT_CACHED_DATA_EXPIRED:I = 0x3fe

.field public static final CONNECT_NO_CACHED_DATA:I = 0x3fd

.field public static final CONNECT_NO_MATCH_MAIN_OPENID:I = 0x3ff

.field public static final DINED_BY_APP:I = 0x1a

.field public static final DISABLED:I = 0x13

.field public static final FILE_SYSTEM:I = 0x8

.field public static final FREQUENCY_LIMIT:I = 0x19

.field public static final GROUP_UNKNOWN_ERROR:I = 0x4b0

.field public static final INVALID_ARGUMENT:I = 0xb

.field public static final INVALID_PASSWORD:I = 0x640

.field public static final IN_PROGRESS:I = 0x16

.field public static final LIBCURL_ERROR:I = 0x18

.field public static final LOGIN_ACCOUNT_REFRESH:I = 0x3f6

.field public static final LOGIN_CACHE_EXPIRE:I = 0x3ea

.field public static final LOGIN_CODE_FOR_CONNECT:I = 0x3ee

.field public static final LOGIN_KEY_STORE_VERIFY_ERROR:I = 0x3ec

.field public static final LOGIN_NEED_LOGIN:I = 0x3f4

.field public static final LOGIN_NEED_SELECT_ACCOUNT:I = 0x3f5

.field public static final LOGIN_NEED_USER_DATA:I = 0x3ed

.field public static final LOGIN_NEED_USER_DATA_SERVER:I = 0x3f2

.field public static final LOGIN_NOCACHE:I = 0x3e9

.field public static final LOGIN_UNKNOWN_ERROR:I = 0x3e8

.field public static final LOGIN_URL_USER_LOGIN:I = 0x3f3

.field public static final NEED_APP:I = 0xf

.field public static final NEED_CHANNEL:I = 0x12

.field public static final NEED_CONFIG:I = 0xd

.field public static final NEED_INIT:I = 0x11

.field public static final NEED_LOGIN:I = 0xa

.field public static final NEED_NAME_AUTH:I = 0x14

.field public static final NEED_PERMISSION:I = 0xc

.field public static final NEED_PLUGIN:I = 0x9

.field public static final NEED_POPUP:I = 0x1c

.field public static final NETWORK:I = 0x4

.field public static final NOTICE_UNKNOWN_ERROR:I = 0x514

.field public static final NOT_SUPPORT:I = 0x7

.field public static final NO_ASSIGN:I = 0x1

.field public static final PUSH_NOTIFICATION_CLICK:I = 0x579

.field public static final PUSH_NOTIFICATION_SHOW:I = 0x57a

.field public static final PUSH_RECEIVER_TEXT:I = 0x578

.field public static final QRCODE_TIMEOUT:I = 0x1b

.field public static final REAL_NAME_FAIL:I = 0x15

.field public static final SERVER:I = 0x5

.field public static final SERVICE_REFUSE:I = 0xe

.field public static final SHARE_UNKNOWN_ERROR:I = 0x44c

.field public static final SUCCESS:I = 0x0

.field public static final SYSTEM:I = 0x3

.field public static final THIRD:I = 0x270f

.field public static final TIMEOUT:I = 0x6

.field public static final UNKNOWN:I = -0x1

.field public static final WEBVIEW_UNKNOWN_ERROR:I = 0x5dc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
