.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;
.super Ljava/lang/Object;
.source "CTIPayNewAPI.java"

# interfaces
.implements Lcom/centauri/oversea/newapi/response/NotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->checkGetIPAndGetKey(Lcom/centauri/oversea/newapi/params/InitParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field final synthetic val$request:Lcom/centauri/oversea/newapi/params/InitParams;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;->val$request:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 551
    const-string v0, "CTIPayNewAPI"

    const-string v1, "Init get_ip or get_key finished."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iget-object v1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$10;->val$request:Lcom/centauri/oversea/newapi/params/InitParams;

    invoke-static {v0, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->access$500(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Lcom/centauri/oversea/newapi/params/InitParams;)V

    return-void
.end method
