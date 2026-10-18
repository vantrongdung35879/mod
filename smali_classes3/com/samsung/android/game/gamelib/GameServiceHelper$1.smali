.class Lcom/samsung/android/game/gamelib/GameServiceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gamelib/GameServiceHelper;-><init>()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "GameServiceHelper"

    const-string v0, "game service connect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {p2}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$002(Lcom/samsung/android/game/gamelib/GameServiceHelper;Lcom/samsung/android/game/tencentsdk/ISceneSdkService;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    iget-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$100(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$100(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;->bindCallBack()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GameServiceHelper"

    const-string v0, "game service disconnect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$002(Lcom/samsung/android/game/gamelib/GameServiceHelper;Lcom/samsung/android/game/tencentsdk/ISceneSdkService;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    return-void
.end method
