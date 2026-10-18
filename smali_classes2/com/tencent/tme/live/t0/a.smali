.class public Lcom/tencent/tme/live/t0/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/chat/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/t0/a;->a:Lcom/tencent/tme/live/chat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/t0/a;->a:Lcom/tencent/tme/live/chat/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/t0/a;->a:Lcom/tencent/tme/live/chat/a;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    .line 5
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "ChatEditorView"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
