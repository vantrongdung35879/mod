.class public Lcom/tencent/tme/live/chat/ChatView$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/chat/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/chat/ChatView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/ChatView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView$a;->a:Lcom/tencent/tme/live/chat/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView$a;->a:Lcom/tencent/tme/live/chat/ChatView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/chat/ChatView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView$a;->a:Lcom/tencent/tme/live/chat/ChatView;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/chat/ChatView;->k:Landroid/view/View;

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
