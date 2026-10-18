.class public final synthetic Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/game/playfeaturedelivery/PFDManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda2;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda2;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager;->lambda$checkSessionState$9$com-garena-game-playfeaturedelivery-PFDManager(Ljava/util/List;)V

    return-void
.end method
