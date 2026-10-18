.class public final synthetic Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda4;->f$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda4;->f$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    check-cast p1, Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->$r8$lambda$MWpOS7HiHjaXsngLr1ICX24K99s(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;)V

    return-void
.end method
