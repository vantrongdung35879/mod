.class Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;
.super Ljava/lang/Object;
.source "MAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/comm/MAlertDialog$Builder;->initDialogButton(Landroid/view/View;Lcom/centauri/oversea/comm/MAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/comm/MAlertDialog$Builder;

.field final synthetic val$dialog:Lcom/centauri/oversea/comm/MAlertDialog;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/comm/MAlertDialog$Builder;Lcom/centauri/oversea/comm/MAlertDialog;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;->this$0:Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    iput-object p2, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;->val$dialog:Lcom/centauri/oversea/comm/MAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;->this$0:Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    invoke-static {p1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->access$000(Lcom/centauri/oversea/comm/MAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;->val$dialog:Lcom/centauri/oversea/comm/MAlertDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
