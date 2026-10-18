.class Lcom/tencent/beacon/base/net/adapter/d;
.super Ljava/lang/Object;
.source "OkHttpAdapter.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->request(Lcom/tencent/beacon/base/net/call/e;Lcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/adapter/d;->c:Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;

    iput-object p2, p0, Lcom/tencent/beacon/base/net/adapter/d;->a:Lcom/tencent/beacon/base/net/call/Callback;

    iput-object p3, p0, Lcom/tencent/beacon/base/net/adapter/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
