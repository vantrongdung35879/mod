.class public Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmes/live/redpacket/PacketEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b()V

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->i:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/tencent/tmes/live/redpacket/h$c;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method
