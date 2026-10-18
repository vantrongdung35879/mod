.class public final synthetic Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda5;
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

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda5;->f$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda5;->f$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    check-cast p1, Lcom/linecorp/linesdk/LineApiResponse;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->$r8$lambda$jkZRu8Ogux8WB0l1iSBSwcMeW8Y(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void
.end method
