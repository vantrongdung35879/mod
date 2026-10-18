.class public Lcom/tencent/tme/live/chat/ChatView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/chat/ChatView;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView$b;->a:Lcom/tencent/tme/live/chat/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView$b;->a:Lcom/tencent/tme/live/chat/ChatView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/chat/ChatView;->f:Landroid/widget/TextView;

    .line 2
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
