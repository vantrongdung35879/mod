.class public Lcom/tencent/tme/live/chat/a;
.super Ljava/lang/Object;


# static fields
.field public static f:I = 0x3c


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/View;

.field public c:Landroid/widget/PopupWindow;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tme/live/w0/d;->o:I

    sput v0, Lcom/tencent/tme/live/chat/a;->f:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_chat_edit_window:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/chat/a;->b:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    const v1, -0x7f7359

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/tencent/tme/live/chat/a;->f:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    new-instance v1, Lcom/tencent/tme/live/chat/a$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/chat/a$a;-><init>(Lcom/tencent/tme/live/chat/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->pop_chat_tainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/chat/a;->e:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tme/live/chat/a$b;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/chat/a$b;-><init>(Lcom/tencent/tme/live/chat/a;Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    new-instance v0, Lcom/tencent/tme/live/chat/a$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/chat/a$c;-><init>(Lcom/tencent/tme/live/chat/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, -0x1f4

    const/16 v3, 0x50

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v0, "ChatEditorView"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->b:Landroid/view/View;

    new-instance v0, Lcom/tencent/tme/live/t0/a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/t0/a;-><init>(Lcom/tencent/tme/live/chat/a;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    sget p2, Lcom/tencent/tme/live/chat/a;->f:I

    if-lt p1, p2, :cond_2

    add-int/lit8 p1, p2, -0x1

    :cond_2
    iget-object p2, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1
    const-string v2, "\r"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ChatEditorView"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "inputMSg:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tme/live/b1/i;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeNormaL:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v2}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->getValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lcom/tencent/tme/live/chat/h;->a(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/tme/live/chat/h$a;)V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "inputMSg_noSEND:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "noSendChatMsg"

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    new-instance p1, Lcom/tencent/tme/live/w0/q;

    iget-object v0, p0, Lcom/tencent/tme/live/chat/a;->a:Landroid/content/Context;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_chat_empty_warn:I

    invoke-direct {p1, v0, v1}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v0

    const-string v1, "showTipOnVideoCenter"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
