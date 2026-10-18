.class Lcom/centauri/http/core/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/http/core/Request;->stopRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/http/core/Request;


# direct methods
.method constructor <init>(Lcom/centauri/http/core/Request;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/centauri/http/core/Request$1;->this$0:Lcom/centauri/http/core/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/centauri/http/core/Request$1;->this$0:Lcom/centauri/http/core/Request;

    iget-object v0, v0, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/centauri/http/core/Request$1;->this$0:Lcom/centauri/http/core/Request;

    iget-object v0, v0, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method
