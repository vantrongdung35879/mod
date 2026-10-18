.class public Lcom/gcloud/nettool/NetworkDefine;
.super Ljava/lang/Object;
.source "NetworkDefine.java"


# static fields
.field public static final NetToolKey_Ping_Avg:Ljava/lang/String; = "rtt_avg"

.field public static final NetToolKey_Ping_Dev:Ljava/lang/String; = "rtt_dev"

.field public static final NetToolKey_Ping_IP:Ljava/lang/String; = "ping_ip"

.field public static final NetToolKey_Ping_Max:Ljava/lang/String; = "rtt_max"

.field public static final NetToolKey_Ping_Min:Ljava/lang/String; = "rtt_min"

.field public static final NetToolKey_Ping_RTT:Ljava/lang/String; = "ping_rtt"

.field public static final NetToolKey_Ping_Recv:Ljava/lang/String; = "ping_recv"

.field public static final NetToolKey_Ping_Ret:Ljava/lang/String; = "ping_ret"

.field public static final NetToolKey_Ping_Send:Ljava/lang/String; = "ping_send"

.field public static final NetToolKey_Ping_TTL:Ljava/lang/String; = "ping_ttl"

.field public static final NetToolKey_Ping_Time:Ljava/lang/String; = "ping_time"

.field public static final NetToolValue_PingRet_Exceed:Ljava/lang/String; = "Exceed"

.field public static final NetToolValue_PingRet_Reachabel:Ljava/lang/String; = "Reachable"

.field public static final NetToolValue_PingRet_Unreach:Ljava/lang/String; = "Unreachable"

.field public static final NetTool_Log_Tag:Ljava/lang/String; = "NetTool"

.field public static final kNetToolRet_AddrError:I = 0x2

.field public static final kNetToolRet_BreakUp:I = 0x7

.field public static final kNetToolRet_ConnectError:I = 0xd

.field public static final kNetToolRet_DataError:I = 0x3

.field public static final kNetToolRet_HopExceed:I = 0x10

.field public static final kNetToolRet_IDNoMatch:I = 0xf

.field public static final kNetToolRet_JNIError:I = 0x5

.field public static final kNetToolRet_ParamError:I = 0x1

.field public static final kNetToolRet_ProtoError:I = 0x4

.field public static final kNetToolRet_RecvError:I = 0xc

.field public static final kNetToolRet_SendError:I = 0xb

.field public static final kNetToolRet_SockError:I = 0xa

.field public static final kNetToolRet_Success:I = 0x0

.field public static final kNetToolRet_SystemError:I = 0x6

.field public static final kNetToolRet_UnpackError:I = 0xe

.field public static final kNetToolRet_ZsdParamError:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
