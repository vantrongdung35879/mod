.class public final Lcom/tencent/qimei/ax/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ax/e;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ax/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ax/c;->a:Lcom/tencent/qimei/ax/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ax/c;->a:Lcom/tencent/qimei/ax/e;

    invoke-static {v0}, Lcom/tencent/qimei/ax/e;->b(Lcom/tencent/qimei/ax/e;)V

    const/4 v0, 0x0

    return v0
.end method
