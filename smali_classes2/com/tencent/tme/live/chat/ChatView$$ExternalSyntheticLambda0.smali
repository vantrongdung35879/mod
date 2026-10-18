.class public final synthetic Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tencent/tme/live/chat/ChatView;

.field public final synthetic f$1:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/tme/live/chat/ChatView;Ljava/util/LinkedList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;->f$0:Lcom/tencent/tme/live/chat/ChatView;

    iput-object p2, p0, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;->f$1:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;->f$0:Lcom/tencent/tme/live/chat/ChatView;

    iget-object v1, p0, Lcom/tencent/tme/live/chat/ChatView$$ExternalSyntheticLambda0;->f$1:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/chat/ChatView;->$r8$lambda$Tp-d4h5heQ3fBSB6vhpaDNeAOyk(Lcom/tencent/tme/live/chat/ChatView;Ljava/util/LinkedList;)V

    return-void
.end method
