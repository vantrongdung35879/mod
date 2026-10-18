.class Lcom/centauri/oversea/comm/MUIManager$1;
.super Ljava/lang/Object;
.source "MUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/comm/MUIManager;->showLoading(Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/comm/MUIManager;

.field final synthetic val$cancelNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$1;->this$0:Lcom/centauri/oversea/comm/MUIManager;

    iput-object p2, p0, Lcom/centauri/oversea/comm/MUIManager$1;->val$cancelNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$1;->val$cancelNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/centauri/oversea/comm/MUIManager$MNotifier;->callback()V

    .line 80
    :cond_0
    const-string p1, "MUIManager"

    const-string/jumbo v0, "showWaitDialog() onCancel."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
