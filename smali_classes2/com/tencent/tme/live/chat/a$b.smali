.class public Lcom/tencent/tme/live/chat/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/chat/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;

.field public final synthetic b:Lcom/tencent/tme/live/chat/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/a;Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/a$b;->b:Lcom/tencent/tme/live/chat/a;

    iput-object p2, p0, Lcom/tencent/tme/live/chat/a$b;->a:Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/chat/a$b;->a:Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;

    new-instance v1, Lcom/tencent/tme/live/chat/a$b$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/chat/a$b$a;-><init>(Lcom/tencent/tme/live/chat/a$b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;->setOnResizeRelativeListener(Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout$a;)V

    return-void
.end method
