.class public Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;
.super Ljava/lang/Object;
.source "ConfigConsts.java"


# static fields
.field public static final BUGLYSDKID:Ljava/lang/String; = "38862ab538"

.field public static final CLOUDCONTROLFILE:Ljava/lang/String;

.field public static final CLOUDCONTROL_LOCATION:Ljava/lang/String; = "cloudctrl/cloud_ctrl"

.field public static CLOUD_URL:Ljava/lang/String; = ""

.field public static final CMCC_QOS:Ljava/lang/String; = "cmcc4G"

.field public static final COS_DEFAULT_BUCKET:Ljava/lang/String; = "transceivertool"

.field public static final COS_DEFAULT_BUCKET_SG:Ljava/lang/String; = "transceivertoolsg"

.field public static final CTCC_QOS:Ljava/lang/String; = "ctcc4G"

.field public static final CUSTOMPIPE_LOCATION:Ljava/lang/String; = "enq/custompipe"

.field public static final DEBUG_LOG_FILE:Ljava/lang/String; = "vmpdebug.log"

.field public static final DEFAULT_PING_COUNT:I = 0x3

.field public static final DEFAULT_PING_DURATION:I = 0x14

.field public static final DEFAULT_PING_SIZE:I = 0x10

.field public static final DEFAULT_TRACERT_MAX_HOP:I = 0x1e

.field public static final DEFAULT_TRACERT_METHOD:I = 0x1

.field public static final DEFAULT_UDP_INTERVAL:I = 0xa

.field public static final FILE_COMPRESS_MAXSIZE:I = 0x1400000

.field public static final FILE_DEFAUT_MAXNUM:I = 0xa

.field public static final FILE_DEFAUT_MAXSIZE:I = 0x6400000

.field public static LDNS_DOMAIN:Ljava/lang/String; = ""

.field public static final LDNS_LOCATION:Ljava/lang/String; = "enq/probe_redis"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_EXECUTE_COUNT:I = 0x3

.field public static final MAX_HTTPSTIME:I = 0xbb8

.field public static final MAX_HTTPTIME:I = 0x3e8

.field public static final MAX_RANGE_SIZE:I = 0xf4240

.field public static final MAX_SLEEPTIME:I = 0x7d0

.field public static final MAX_SOCKTIME:I = 0x5dc

.field public static final MAX_TASKLIST_SIZE:I = 0x64

.field public static final MAX_TASK_NUM:I = 0xa

.field public static final MIN_OSVERSON:I = 0x15

.field public static final MIN_QUERY_TASKCLOUD_INTERVAL:I = 0x2710

.field public static final MONITOR_LOCATION:Ljava/lang/String; = "enq/monitor_server"

.field public static final NATIVE_TRACERT_METHOD:I = 0x6

.field public static final PROBE_HOST_V4:Ljava/lang/String; = "1.1.1.1"

.field public static final PROBE_HOST_V6:Ljava/lang/String; = "[2001:4860:4860::6464]"

.field public static final PROBE_UDP_PORT:I = 0x1a0a

.field public static QCLOUD_URL:Ljava/lang/String; = ".myqcloud.com"

.field public static QOSLOCALFILE:Ljava/lang/String; = "ENQSDK/.enq"

.field public static final QUERY_QOS:Ljava/lang/String; = "enq/queryQos"

.field public static final QUERY_TAPDOPTION_TGPA:Ljava/lang/String; = "task/query_tapd_option"

.field public static final QUERY_TAPDTEMP_TGPA:Ljava/lang/String; = "task/query_tapd_template"

.field public static final Q_CLOUD_QOS:Ljava/lang/String; = "qCloud"

.field public static final SDK_CLOSE_LOG:Ljava/lang/String; = "D99QmaNDQhsfTUJMkWj"

.field public static final SDK_OPEN_LOG:Ljava/lang/String; = "D00QPGxYAdSXy67zRwv"

.field public static SECURITY_TOKEN_URL:Ljava/lang/String; = ""

.field public static final SIMPLE_REPORT_DATA_TGPA:Ljava/lang/String; = "task/report_data"

.field public static final START_QOS:Ljava/lang/String; = "enq/startQos"

.field public static final STOP_QOS:Ljava/lang/String; = "enq/stopQos"

.field public static final TASK_LOCATION:Ljava/lang/String; = "enq/probe_server"

.field public static final TDM_SRCID:I = 0x4e2e

.field public static final UPLOADFILE_LOCATION:Ljava/lang/String; = "enq/getfiletoken"

.field public static final UPLOADFILE_LOCATION_TGPA:Ljava/lang/String; = "task/getfiletoken"

.field public static V6IP_DOMAIN:Ljava/lang/String; = ""

.field public static final V6IP_LOCATION:Ljava/lang/String; = "enq/getip"

.field public static final VERSION:Ljava/lang/String; = "1.3.6.1"

.field public static final VERSIONCODE:I = 0x88


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tgpa"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.tgpacloud"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->CLOUDCONTROLFILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
