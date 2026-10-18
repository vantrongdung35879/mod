.class Lcom/centauri/oversea/comm/MUIManager$5;
.super Ljava/lang/Object;
.source "MUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/comm/MUIManager;->showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/comm/MUIManager;

.field final synthetic val$notifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$5;->this$0:Lcom/centauri/oversea/comm/MUIManager;

    iput-object p2, p0, Lcom/centauri/oversea/comm/MUIManager$5;->val$notifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$5;->val$notifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    if-eqz p1, :cond_0

    .line 189
    invoke-interface {p1}, Lcom/centauri/oversea/comm/MUIManager$MNotifier;->callback()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
