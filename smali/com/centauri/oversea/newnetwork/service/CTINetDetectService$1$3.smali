.class Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;
.super Ljava/lang/Object;
.source "CTINetDetectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;Ljava/lang/Object;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;->val$obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->access$100(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;Lorg/json/JSONArray;)V

    return-void
.end method
