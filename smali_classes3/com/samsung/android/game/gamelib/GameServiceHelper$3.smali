.class Lcom/samsung/android/game/gamelib/GameServiceHelper$3;
.super Lcom/samsung/android/game/tencentsdk/ISceneSdkListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gamelib/GameServiceHelper;->registerListener(Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gamelib/GameServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$3;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/game/tencentsdk/ISceneSdkListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public resultCallBack(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$3;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$300(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;->resultCallBack(II)V

    return-void
.end method

.method public systemCallBack(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$3;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$300(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;->systemCallBack(I)V

    return-void
.end method
