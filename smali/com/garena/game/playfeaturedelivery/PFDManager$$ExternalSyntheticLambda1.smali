.class public final synthetic Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/game/playfeaturedelivery/PFDManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    iput-object p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    iget-object v1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager;->lambda$startUpdate$4$com-garena-game-playfeaturedelivery-PFDManager(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
