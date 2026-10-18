.class Lcom/intlgame/tools/permission/PermissionGrantActivity$1;
.super Ljava/lang/Object;
.source "PermissionGrantActivity.java"

# interfaces
.implements Lcom/intlgame/api/INTLResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/tools/permission/PermissionGrantActivity;->processPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intlgame/api/INTLResultCallback<",
        "Lcom/intlgame/api/INTLResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$1;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/intlgame/api/INTLResult;)V
    .locals 3

    const-string v0, "request permissions status : "

    .line 172
    :try_start_0
    iget v1, p1, Lcom/intlgame/api/INTLResult;->ret_code_:I

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$1;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$002(Lcom/intlgame/tools/permission/PermissionGrantActivity;Z)Z

    .line 175
    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity$1;->this$0:Lcom/intlgame/tools/permission/PermissionGrantActivity;

    invoke-static {v1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->access$100(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/intlgame/api/INTLResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
