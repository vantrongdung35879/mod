.class public Lcom/tencent/tme/live/d1/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/d1/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/d1/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/d1/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/d1/c$a;->a:Lcom/tencent/tme/live/d1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/d1/c$a;->a:Lcom/tencent/tme/live/d1/c;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/d1/c;->b:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->goBack()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/d1/c$a;->a:Lcom/tencent/tme/live/d1/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
