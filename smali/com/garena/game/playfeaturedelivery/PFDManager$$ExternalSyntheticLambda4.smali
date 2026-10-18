.class public final synthetic Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/garena/game/playfeaturedelivery/PFDManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    iput p2, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;->f$0:Lcom/garena/game/playfeaturedelivery/PFDManager;

    iget v1, p0, Lcom/garena/game/playfeaturedelivery/PFDManager$$ExternalSyntheticLambda4;->f$1:I

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/garena/game/playfeaturedelivery/PFDManager;->lambda$cancelInstall$0$com-garena-game-playfeaturedelivery-PFDManager(ILjava/lang/Void;)V

    return-void
.end method
