.class Lcom/centauri/oversea/api/CTIPayAPI$4;
.super Ljava/lang/Object;
.source "CTIPayAPI.java"

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/api/CTIPayAPI;->reProvide(Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/api/CTIPayAPI;

.field final synthetic val$callback:Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/api/CTIPayAPI;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/centauri/oversea/api/CTIPayAPI$4;->this$0:Lcom/centauri/oversea/api/CTIPayAPI;

    iput-object p2, p0, Lcom/centauri/oversea/api/CTIPayAPI$4;->val$callback:Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/centauri/oversea/api/CTIPayAPI$4;->val$callback:Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;->onUpdate(ILjava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object p1

    new-instance p2, Lcom/centauri/oversea/api/CTIPayAPI$4$1;

    invoke-direct {p2, p0}, Lcom/centauri/oversea/api/CTIPayAPI$4$1;-><init>(Lcom/centauri/oversea/api/CTIPayAPI$4;)V

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    return-void
.end method
