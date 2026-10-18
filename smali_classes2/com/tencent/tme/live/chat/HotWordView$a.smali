.class public Lcom/tencent/tme/live/chat/HotWordView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/chat/HotWordView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/chat/HotWordView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/HotWordView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/HotWordView$a;->a:Lcom/tencent/tme/live/chat/HotWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/chat/HotWordView$a;->a:Lcom/tencent/tme/live/chat/HotWordView;

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/chat/HotWordView;->f:Lcom/tencent/tme/live/chat/HotWordView$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/tme/live/chat/HotWordView$b;->a()V

    :cond_0
    return-void
.end method
