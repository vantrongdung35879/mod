.class Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor$1;
.super Ljava/lang/Object;
.source "CTIEndGetKeyInterceptor.java"

# interfaces
.implements Lcom/centauri/http/core/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;


# direct methods
.method constructor <init>(Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor$1;->this$0:Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/centauri/http/core/Response;)V
    .locals 1

    .line 79
    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpResponse;->isResponseCentauriBusinessSuccess(Lcom/centauri/http/core/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor$1;->this$0:Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;

    invoke-static {v0}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->access$000(Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;)Lcom/centauri/http/centaurihttp/CTINetworkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/http/centaurihttp/CTINetworkManager;->notifyGetKeySuccess(Lcom/centauri/http/core/Response;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor$1;->this$0:Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;

    invoke-static {v0}, Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;->access$000(Lcom/centauri/http/centaurihttp/CTIEndGetKeyInterceptor;)Lcom/centauri/http/centaurihttp/CTINetworkManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/centauri/http/centaurihttp/CTIGetKeyInterceptor;->clearKeyForRequestWhenGetKeyFail(Lcom/centauri/http/centaurihttp/CTINetworkManager;Lcom/centauri/http/core/Response;)V

    :goto_0
    return-void
.end method
