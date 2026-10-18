.class public final synthetic Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;->lambda$executeAction$0$com-beetalk-sdk-plugin-impl-friends-LoadGroupFriendsInfo(Ljava/util/List;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
