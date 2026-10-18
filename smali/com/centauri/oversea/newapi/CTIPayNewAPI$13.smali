.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;
.super Ljava/lang/Object;
.source "CTIPayNewAPI.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reportData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 724
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    const-string v0, "finalDataReport failed"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 729
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    const-string v0, "finalDataReport stoped"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 719
    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    const-string v0, "finalDataReport succ"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
