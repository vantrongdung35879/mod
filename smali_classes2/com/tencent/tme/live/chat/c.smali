.class public Lcom/tencent/tme/live/chat/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/chat/HotEmojView$c;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/chat/ChatView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/ChatView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/c;->a:Lcom/tencent/tme/live/chat/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/chat/c;->a:Lcom/tencent/tme/live/chat/ChatView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/chat/ChatView;->l:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    const-string v2, "entry_list_show_state_changed"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/chat/c;->a:Lcom/tencent/tme/live/chat/ChatView;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/chat/ChatView;->l:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    const-string v2, "entry_list_show_state_changed"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
