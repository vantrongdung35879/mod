.class Lcom/samsung/android/game/gamelibnew/GameServiceHelper$3;
.super Lcom/samsung/android/game/tsdk/ISceneSdkListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->registerListener(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$3;->this$0:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/game/tsdk/ISceneSdkListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public resultCallBack(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$3;->this$0:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->access$300(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;->resultCallBack(II)V

    return-void
.end method

.method public systemCallBack(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$3;->this$0:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->access$300(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$Listener;->systemCallBack(I)V

    return-void
.end method
