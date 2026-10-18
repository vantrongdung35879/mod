.class Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList$1;
.super Ljava/lang/Object;
.source "LoadFriendGroupList.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;->executeAction(Landroid/app/Activity;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList$1;->this$0:Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/pay/android/exception/GGException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/beetalk/sdk/networking/service/SocialService;->getFriendGroupsSync()Lcom/beetalk/sdk/networking/model/GetFriendGroupsResponse;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/GetFriendGroupsResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/Helper;->convertErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    .line 46
    :cond_0
    new-instance v2, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;

    invoke-direct {v2}, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;-><init>()V

    .line 47
    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;->flag:I

    .line 48
    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    if-ne v1, v3, :cond_1

    .line 49
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;->flag:I

    .line 50
    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/GetFriendGroupsResponse;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/PluginUtil;->parseFriendGroups(Ljava/util/List;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, v2, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;->groups:Ljava/util/Vector;

    .line 52
    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList$1;->this$0:Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;

    invoke-virtual {v3}, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
