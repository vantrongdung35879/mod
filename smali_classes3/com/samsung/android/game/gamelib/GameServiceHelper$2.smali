.class Lcom/samsung/android/game/gamelib/GameServiceHelper$2;
.super Lcom/samsung/android/game/tencentsdk/IToTGPACallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gamelib/GameServiceHelper;->registerToTGPACallback(Lcom/samsung/android/game/gamelib/GameServiceHelper$ToTGPACallback;F)I
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

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/game/tencentsdk/IToTGPACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public totgpa(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$200(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$ToTGPACallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/game/gamelib/GameServiceHelper$ToTGPACallback;->totgpa(Ljava/lang/String;)V

    return-void
.end method
