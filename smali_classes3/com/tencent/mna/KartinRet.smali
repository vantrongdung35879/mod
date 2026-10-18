.class public final Lcom/tencent/mna/KartinRet;
.super Ljava/lang/Object;
.source "KartinRet.java"


# static fields
.field public static final KARTIN_FLAG_2G_FAILED:I = -0x5

.field public static final KARTIN_FLAG_FAILED:I = -0x6

.field public static final KARTIN_FLAG_GET_DGN_SPEED_TESTER_FAILED:I = -0x1f5

.field public static final KARTIN_FLAG_NETWORK_CHANGE_FAILED:I = -0x4

.field public static final KARTIN_FLAG_NORMAL:I = 0x0

.field public static final KARTIN_FLAG_NO_NET_FAILED:I = -0x1

.field public static final KARTIN_FLAG_REQ_FAILED:I = -0x2

.field public static final KARTIN_REASON_2G_FAILED:Ljava/lang/String; = "2G\u7f51\u7edc\u4e0b\u7f51\u901f\u5dee"

.field public static final KARTIN_REASON_2G_FAILED_ENGLISH:Ljava/lang/String; = "2G Network"

.field public static final KARTIN_REASON_CLOUD_REQ_FAILED:Ljava/lang/String; = "\u8bf7\u6c42\u4e91\u63a7\u5931\u8d25"

.field public static final KARTIN_REASON_CLOUD_REQ_FAILED_ENGLISH:Ljava/lang/String; = "Request Control Fail"

.field public static final KARTIN_REASON_FAILED:Ljava/lang/String; = "\u5931\u8d25"

.field public static final KARTIN_REASON_FAILED_ENGLISH:Ljava/lang/String; = "Fail"

.field public static final KARTIN_REASON_GET_DGN_SPEED_TESTER_FAILED:Ljava/lang/String; = "\u83b7\u53d6\u8bca\u65ad\u534f\u8bae\u5931\u8d25"

.field public static final KARTIN_REASON_GET_DGN_SPEED_TESTER_FAILED_ENGLISH:Ljava/lang/String; = "Get DgnSpeedTester Fail"

.field public static final KARTIN_REASON_MASTER_REQ_FAILED:Ljava/lang/String; = "\u8bf7\u6c42Master\u5931\u8d25"

.field public static final KARTIN_REASON_MASTER_REQ_FAILED_ENGLISH:Ljava/lang/String; = "Request Master Fail"

.field public static final KARTIN_REASON_NETWORK_CHANGE_FAILED:Ljava/lang/String; = "\u67e5\u8be2\u8fc7\u7a0b\u7f51\u7edc\u7c7b\u578b\u5207\u6362"

.field public static final KARTIN_REASON_NETWORK_CHANGE_FAILED_ENGLISH:Ljava/lang/String; = "Network Changed"

.field public static final KARTIN_REASON_NORMAL:Ljava/lang/String; = "\u6210\u529f"

.field public static final KARTIN_REASON_NORMAL_ENGLISH:Ljava/lang/String; = "Success"

.field public static final KARTIN_REASON_NO_NET_FAILED:Ljava/lang/String; = "\u65e0\u7f51\u7edc"

.field public static final KARTIN_REASON_NO_NET_FAILED_ENGLISH:Ljava/lang/String; = "No Network"


# instance fields
.field public desc:Ljava/lang/String;

.field public direct_desc:Ljava/lang/String;

.field public direct_status:I

.field public export_desc:Ljava/lang/String;

.field public export_status:I

.field public flag:I

.field public jump_direct:I

.field public jump_edge:I

.field public jump_export:I

.field public jump_network:I

.field public jump_proxy:I

.field public jump_router:I

.field public jump_signal:I

.field public jump_terminal:I

.field public netinfo_desc:Ljava/lang/String;

.field public netinfo_status:I

.field public network_star:I

.field public router_desc:Ljava/lang/String;

.field public router_status:I

.field public signal_desc:Ljava/lang/String;

.field public signal_status:I

.field public tag:Ljava/lang/String;

.field public terminal_desc:Ljava/lang/String;

.field public terminal_status:I

.field public wifi_num:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 4
    const-string/jumbo v1, "\u89e3\u6790\u9519\u8bef"

    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 9
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 12
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 14
    iput v0, p0, Lcom/tencent/mna/KartinRet;->signal_status:I

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 21
    iput v0, p0, Lcom/tencent/mna/KartinRet;->router_status:I

    .line 23
    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    .line 26
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 28
    iput v0, p0, Lcom/tencent/mna/KartinRet;->export_status:I

    .line 30
    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 35
    iput v0, p0, Lcom/tencent/mna/KartinRet;->terminal_status:I

    .line 37
    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    .line 42
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_edge:I

    .line 45
    iput v0, p0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    .line 47
    iput v0, p0, Lcom/tencent/mna/KartinRet;->direct_status:I

    .line 49
    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    .line 52
    iput v0, p0, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    .line 53
    iput-object v1, p0, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/tencent/mna/KartinRet;->network_star:I

    .line 59
    iput v0, p0, Lcom/tencent/mna/KartinRet;->wifi_num:I

    .line 63
    iput-object p1, p0, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/KartinRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",desc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",detail("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/KartinRet;->jump_network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->signal_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->router_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->export_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->terminal_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_edge:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mna/KartinRet;->direct_status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
