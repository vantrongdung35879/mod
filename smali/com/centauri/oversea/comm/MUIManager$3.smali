.class Lcom/centauri/oversea/comm/MUIManager$3;
.super Ljava/lang/Object;
.source "MUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$cancelNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$3;->this$0:Lcom/centauri/oversea/comm/MUIManager;

    iput-object p2, p0, Lcom/centauri/oversea/comm/MUIManager$3;->val$cancelNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 136
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager$3;->val$cancelNotifier:Lcom/centauri/oversea/comm/MUIManager$MNotifier;

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/centauri/oversea/comm/MUIManager$MNotifier;->callback()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
