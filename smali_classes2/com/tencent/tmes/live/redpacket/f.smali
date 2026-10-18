.class public Lcom/tencent/tmes/live/redpacket/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/f;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/f;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    .line 2
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->i:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/tencent/tmes/live/redpacket/h$c;->b()V

    :cond_0
    return-void
.end method
