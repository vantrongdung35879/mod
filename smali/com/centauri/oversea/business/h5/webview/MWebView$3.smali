.class Lcom/centauri/oversea/business/h5/webview/MWebView$3;
.super Ljava/lang/Object;
.source "MWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$3;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$3;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$201(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    return-void
.end method
