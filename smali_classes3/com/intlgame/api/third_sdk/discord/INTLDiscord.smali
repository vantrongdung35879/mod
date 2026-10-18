.class public Lcom/intlgame/api/third_sdk/discord/INTLDiscord;
.super Ljava/lang/Object;
.source "INTLDiscord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acceptInviteFromFriend(Ljava/lang/String;)V
.end method

.method public static native addFriendByID(Ljava/lang/String;)V
.end method

.method public static native addFriendByName(Ljava/lang/String;)V
.end method

.method public static native createLobby(Ljava/lang/String;)V
.end method

.method public static native discordAuthorize()V
.end method

.method public static native discordQueryFriends(II)V
.end method

.method public static native getConnectedUser()V
.end method

.method public static native leaveLobby()V
.end method

.method public static native removeFriend(Ljava/lang/String;)V
.end method

.method public static native sendInviteToFriend(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native sendMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setDiscordObserver(Lcom/intlgame/api/third_sdk/discord/INTLDiscordObserver;)V
.end method

.method public static native setRichPresence(Lcom/intlgame/api/third_sdk/discord/INTLDiscordRichPresence;)V
.end method
