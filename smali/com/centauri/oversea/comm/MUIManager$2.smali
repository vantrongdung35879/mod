.class Lcom/centauri/oversea/comm/MUIManager$2;
.super Ljava/lang/Object;
.source "MUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/comm/MUIManager;->showSandboxDialog(Lcom/centauri/oversea/comm/MUIManager$MNotifier;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/comm/MUIManager;

.field final synthetic val$obj:Ljava/lang/Object;

.field final synthetic val$sureNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;Ljava/lang/Object;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$2;->this$0:Lcom/centauri/oversea/comm/MUIManager;

    iput-object p2, p0, Lcom/centauri/oversea/comm/MUIManager$2;->val$sureNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    iput-object p3, p0, Lcom/centauri/oversea/comm/MUIManager$2;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$2;->val$sureNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/centauri/oversea/comm/MUIManager$MNotifier;->callback()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$2;->val$obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/centauri/oversea/comm/MUIManager$2;->this$0:Lcom/centauri/oversea/comm/MUIManager;

    invoke-static {p2}, Lcom/centauri/oversea/comm/MUIManager;->access$000(Lcom/centauri/oversea/comm/MUIManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/oversea/comm/CTICommMethod;->startDebugActivity(Ljava/lang/Class;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
