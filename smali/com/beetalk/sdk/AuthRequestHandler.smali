.class public abstract Lcom/beetalk/sdk/AuthRequestHandler;
.super Ljava/lang/Object;
.source "AuthRequestHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected client:Lcom/beetalk/sdk/AuthClient;


# direct methods
.method protected constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 0

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
.end method
