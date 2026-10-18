.class public Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmes/live/redpacket/PacketEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;

    invoke-direct {v1, p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;-><init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
