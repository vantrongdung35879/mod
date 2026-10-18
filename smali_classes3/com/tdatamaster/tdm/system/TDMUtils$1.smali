.class Lcom/tdatamaster/tdm/system/TDMUtils$1;
.super Ljava/lang/Object;
.source "TDMUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdatamaster/tdm/system/TDMUtils;->ShowErrorAlertView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdatamaster/tdm/system/TDMUtils;


# direct methods
.method constructor <init>(Lcom/tdatamaster/tdm/system/TDMUtils;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMUtils$1;->this$0:Lcom/tdatamaster/tdm/system/TDMUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/tdatamaster/tdm/system/TDMUtils$1;->this$0:Lcom/tdatamaster/tdm/system/TDMUtils;

    invoke-static {v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->access$000(Lcom/tdatamaster/tdm/system/TDMUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tdatamaster/tdm/system/TDMUtils$1;->this$0:Lcom/tdatamaster/tdm/system/TDMUtils;

    invoke-static {v1}, Lcom/tdatamaster/tdm/system/TDMUtils;->access$100(Lcom/tdatamaster/tdm/system/TDMUtils;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
