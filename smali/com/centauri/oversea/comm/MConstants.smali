.class public Lcom/centauri/oversea/comm/MConstants;
.super Ljava/lang/Object;
.source "MConstants.java"


# static fields
.field public static final AP_LOGIN_REPORT_FCG:Ljava/lang/String; = "/v1/r/%s/appbind"

.field public static final AP_LOGIN_REPORT_SANDBOX_FCG:Ljava/lang/String; = "/v1/r/%s/appbind"

.field public static final AP_LOG_DATA:Ljava/lang/String; = "/cgi-bin/log_data.fcg?offer_id=%s"

.field public static final AP_LOG_REPORT_FCG:Ljava/lang/String; = "/v1/800/%s/log_data"

.field public static final AP_LOG_REPORT_SANDBOX_FCG:Ljava/lang/String; = "/v1/r/%s/log_data"

.field public static final AP_OVERSEA_COMM_FCG:Ljava/lang/String; = "/v1/r/%s/mobile_overseas_common"

.field public static final AP_OVERSEA_COMM_SANDBOX_FCG:Ljava/lang/String; = "/v1/r/%s/mobile_overseas_common"

.field public static final AP_QUERY_MP_FCG:Ljava/lang/String; = "/v1/r/%s/mobile_mp_info"

.field public static final AP_QUERY_MP_SANDBOX_FCG:Ljava/lang/String; = "/v1/r/%s/mobile_mp_info"

.field public static final DevEnv:Ljava/lang/String; = "dev"

.field public static final INTRO_PRICE_CGI:Ljava/lang/String; = "/cgi-bin/iap_query.fcg"

.field public static MConstants0:I = 0x22

.field public static MConstantsAlpha:Ljava/lang/String; = "asdS"

.field public static MConstantsBeta:I = 0x5

.field public static MConstantsCell:Ljava/lang/String; = "WEls"

.field public static MConstantsDone:I = 0x2

.field public static MConstantsEmma:Ljava/lang/String; = "SD"

.field public static MConstantsFrank:I = 0x17

.field public static MConstantsGeo:Ljava/lang/String; = "SFS"

.field public static MConstantsHolo:I = 0x11a

.field public static MConstantsI:Ljava/lang/String; = "ASD"

.field public static MConstantsJoker:I = 0x5

.field public static MConstantsKeith:Ljava/lang/String; = "sf"

.field public static MConstantsLength:I = 0x17

.field public static MConstantsMoon:Ljava/lang/String; = "SF"

.field public static final MSG_COMM_LOGIN_ERROR:I = 0xbda

.field public static final MSG_PAYCHANNEL_CANCEL:I = 0xbc9

.field public static final MSG_PAYCHANNEL_GET_ORDER_ERROR:I = 0xbd0

.field public static final MSG_PAYCHANNEL_GET_ORDER_SUCC:I = 0xbcf

.field public static final MSG_PAYCHANNEL_INIT:I = 0xbca

.field public static final MSG_PAYCHANNEL_INIT_ERROR:I = 0xbcc

.field public static final MSG_PAYCHANNEL_INIT_SUCC:I = 0xbcb

.field public static final MSG_PAYCHANNEL_PAY_ERROR:I = 0xbd7

.field public static final MSG_PAYCHANNEL_PAY_SUCC:I = 0xbd6

.field public static final MSG_PAYCHANNEL_PAY_TO_BE_PAID:I = 0xbdb

.field public static final MSG_PAYCHANNEL_PAY_UNKNOWN:I = 0xbd9

.field public static final MSG_PAYCHANNEL_POSTPAY_ERROR:I = 0xbd5

.field public static final MSG_PAYCHANNEL_POSTPAY_SUCC:I = 0xbd4

.field public static final MSG_PAYCHANNEL_PREPAY_ERROR:I = 0xbce

.field public static final MSG_PAYCHANNEL_PREPAY_SUCC:I = 0xbcd

.field public static final MSG_PAYCHANNEL_PROVIDE_ERROR:I = 0xbd3

.field public static final MSG_PAYCHANNEL_PROVIDE_SUCC:I = 0xbd2

.field public static final MSG_PAYCHANNEL_RECOVERY:I = 0xbd1

.field public static final RET_ERROR:I = -0x1

.field public static final RET_OK:I = 0x0

.field public static final ReleaseEnv:Ljava/lang/String; = "release"

.field public static final TestEnv:Ljava/lang/String; = "test"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
