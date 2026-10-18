.class public Lcom/unity3d/player/UnityPlayerActivity;
.super Landroid/app/Activity;
.source "UnityPlayerActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;


# static fields
.field public static isGameActivityLive:Z = false


# instance fields
.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field m_bDelayInitUnity:Z

.field m_bInitUnity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    .line 19
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bDelayInitUnity:Z

    return-void
.end method


# virtual methods
.method protected DelayStartUnit()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->SetVideoSplash()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bDelayInitUnity:Z

    return-void
.end method

.method protected NonotUseUnitySplash()V
    .locals 2

    .line 64
    const-string v0, "Sgame_unity "

    const-string v1, "Sgame NonotUseUnitySplash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->SetVideoSplash()V

    return-void
.end method

.method protected StartUnity()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    const-string v1, "Sgame_unity "

    if-nez v0, :cond_0

    .line 72
    const-string v0, "Sgame StartUnity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 75
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "Sgame skip StartUnity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public UnityReady()V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 229
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sput-boolean v0, Lcom/unity3d/player/UnityPlayerActivity;->isGameActivityLive:Z

    .line 39
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "unity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-boolean p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-nez p1, :cond_1

    .line 44
    iget-boolean p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bDelayInitUnity:Z

    const-string v0, "Sgame_unity "

    if-nez p1, :cond_0

    .line 46
    const-string p1, "Sgame immediat start unity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayerActivity;->StartUnity()V

    goto :goto_0

    .line 51
    :cond_0
    const-string p1, "Sgame delay start unity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/unity3d/player/UnityPlayerActivity;->isGameActivityLive:Z

    .line 115
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 282
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 186
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 105
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 157
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->saveMultiWindowMode(Landroid/app/Activity;)V

    .line 159
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->isMultiWindowModeChangedToTrue(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 130
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 198
    iget-boolean p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 219
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->m_bInitUnity:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method protected updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
