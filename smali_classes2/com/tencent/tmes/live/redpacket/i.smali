.class public Lcom/tencent/tmes/live/redpacket/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/v0/g<",
        "Lcom/tencent/tme/live/w0/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/h$c;

.field public final synthetic b:Lcom/tencent/tmes/live/redpacket/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/h;Lcom/tencent/tmes/live/redpacket/h$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/i;->b:Lcom/tencent/tmes/live/redpacket/h;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/i;->a:Lcom/tencent/tmes/live/redpacket/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/tencent/tme/live/w0/j;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "RedPacketEntry"

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/i;->b:Lcom/tencent/tmes/live/redpacket/h;

    invoke-static {p1, v0}, Lcom/tencent/tmes/live/redpacket/h;->a(Lcom/tencent/tmes/live/redpacket/h;Z)Z

    .line 2
    const-string p1, "tryMountEntryView packetListBean is null"

    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p1, Lcom/tencent/tme/live/w0/j;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/i;->b:Lcom/tencent/tmes/live/redpacket/h;

    invoke-static {p1, v0}, Lcom/tencent/tmes/live/redpacket/h;->a(Lcom/tencent/tmes/live/redpacket/h;Z)Z

    .line 4
    const-string p1, "tryMountEntryView entryPic is empty"

    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/i;->b:Lcom/tencent/tmes/live/redpacket/h;

    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/i;->a:Lcom/tencent/tmes/live/redpacket/h$c;

    .line 6
    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmes/live/redpacket/h;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tmes/live/redpacket/h$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
