.class Lcom/tencent/beacon/a/a/a;
.super Ljava/lang/Object;
.source "BeaconBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/a/a/c;

.field final synthetic b:Lcom/tencent/beacon/a/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/a/a/b;Lcom/tencent/beacon/a/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/a/a;->b:Lcom/tencent/beacon/a/a/b;

    iput-object p2, p0, Lcom/tencent/beacon/a/a/a;->a:Lcom/tencent/beacon/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/a/a/a;->b:Lcom/tencent/beacon/a/a/b;

    iget-object v1, p0, Lcom/tencent/beacon/a/a/a;->a:Lcom/tencent/beacon/a/a/c;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method
