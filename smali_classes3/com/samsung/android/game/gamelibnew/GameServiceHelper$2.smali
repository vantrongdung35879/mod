.class Lcom/samsung/android/game/gamelibnew/GameServiceHelper$2;
.super Lcom/samsung/android/game/tsdk/IToTGPACallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->registerToTGPACallback(Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;F)I
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

    iput-object p1, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/game/tsdk/IToTGPACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public totgpa(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelibnew/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper;->access$200(Lcom/samsung/android/game/gamelibnew/GameServiceHelper;)Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/game/gamelibnew/GameServiceHelper$ToTGPACallback;->totgpa(Ljava/lang/String;)V

    return-void
.end method
