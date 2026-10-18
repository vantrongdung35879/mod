.class public final synthetic Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;->f$0:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;->f$0:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/beetalk/sdk/exts/WebViewExtsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/beetalk/sdk/exts/WebViewExtsKt;->$r8$lambda$D0QGQRs-uEyuH5Hn-8ciZfXMvXA(Landroid/webkit/WebView;Ljava/lang/String;Lcom/facebook/bolts/Task;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
