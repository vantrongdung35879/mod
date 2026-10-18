.class Lcom/tencent/beacon/base/net/call/g;
.super Ljava/lang/Object;
.source "JceCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/call/j;->a(Lcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic b:Lcom/tencent/beacon/base/net/call/j;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/base/net/call/j;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/call/g;->b:Lcom/tencent/beacon/base/net/call/j;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/call/g;->a:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/call/g;->b:Lcom/tencent/beacon/base/net/call/j;

    iget-object v1, p0, Lcom/tencent/beacon/base/net/call/g;->a:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/base/net/call/j;->b(Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method
