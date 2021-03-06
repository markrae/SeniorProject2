﻿// ------------------------------------------------------------------------------
//  <auto-generated>
//      This code was generated by coded UI test builder.
//      Version: 10.0.0.0
//
//      Changes to this file may cause incorrect behavior and will be lost if
//      the code is regenerated.
//  </auto-generated>
// ------------------------------------------------------------------------------

namespace MovieTesting
{
    using System;
    using System.CodeDom.Compiler;
    using System.Collections.Generic;
    using System.Drawing;
    using System.Text.RegularExpressions;
    using System.Windows.Input;
    using Microsoft.VisualStudio.TestTools.UITest.Extension;
    using Microsoft.VisualStudio.TestTools.UITesting;
    using Microsoft.VisualStudio.TestTools.UITesting.WinControls;
    using Microsoft.VisualStudio.TestTools.UnitTesting;
    using Keyboard = Microsoft.VisualStudio.TestTools.UITesting.Keyboard;
    using Mouse = Microsoft.VisualStudio.TestTools.UITesting.Mouse;
    using MouseButtons = System.Windows.Forms.MouseButtons;
    
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public partial class UIMap
    {
        
        /// <summary>
        /// testMethod1 - Use 'testMethod1Params' to pass parameters into this method.
        /// </summary>
        public void testMethod1()
        {
            #region Variable Declarations
            WinMenuItem uINewStudentMenuItem = this.UIHomePageMozillaFirefWindow.UIItemMenuBar.UINewStudentMenuItem;
            WinEdit uICreateStudentEdit = this.UIHomePageMozillaFirefWindow.UICreateStudentHyperlink.UICreateStudentEdit;
            WinEdit uIItemEdit = this.UIHomePageMozillaFirefWindow.UIItemCell.UIItemEdit;
            WinEdit uIItemEdit1 = this.UIHomePageMozillaFirefWindow.UIItemCell.UIItemEdit1;
            WinCheckBox uIItemCheckBox = this.UIHomePageMozillaFirefWindow.UIItemCell.UIItemCheckBox;
            WinEdit uIInsertEdit = this.UIHomePageMozillaFirefWindow.UIInsertHyperlink.UIInsertEdit;
            #endregion

            // Launch '%ProgramFiles%\Mozilla Firefox\firefox.exe'
            ApplicationUnderTest uIHomePageMozillaFirefWindow = ApplicationUnderTest.Launch(this.testMethod1Params.UIHomePageMozillaFirefWindowExePath, this.testMethod1Params.UIHomePageMozillaFirefWindowAlternateExePath);

            // Click 'New Student' menu item
            Mouse.Click(uINewStudentMenuItem, new Point(58, 13));

            // Click 'Create Student' text box
            Mouse.Click(uICreateStudentEdit, new Point(38, 12));

            // Type 'James' in 'Unknown Name' text box
            uIItemEdit.Text = this.testMethod1Params.UIItemEditText;

            // Type 'Green' in 'Unknown Name' text box
            uIItemEdit1.Text = this.testMethod1Params.UIItemEdit1Text;

            // Type '{Tab}' in 'Unknown Name' text box
            Keyboard.SendKeys(uIItemEdit1, this.testMethod1Params.UIItemEdit1SendKeys, ModifierKeys.None);

            // Select 'Unknown Name' check box
            uIItemCheckBox.Checked = this.testMethod1Params.UIItemCheckBoxChecked;

            // Click 'Insert' text box
            Mouse.Click(uIInsertEdit, new Point(23, 8));
        }
        
        #region Properties
        public virtual testMethod1Params testMethod1Params
        {
            get
            {
                if ((this.mtestMethod1Params == null))
                {
                    this.mtestMethod1Params = new testMethod1Params();
                }
                return this.mtestMethod1Params;
            }
        }
        
        public UIHomePageMozillaFirefWindow UIHomePageMozillaFirefWindow
        {
            get
            {
                if ((this.mUIHomePageMozillaFirefWindow == null))
                {
                    this.mUIHomePageMozillaFirefWindow = new UIHomePageMozillaFirefWindow();
                }
                return this.mUIHomePageMozillaFirefWindow;
            }
        }
        #endregion
        
        #region Fields
        private testMethod1Params mtestMethod1Params;
        
        private UIHomePageMozillaFirefWindow mUIHomePageMozillaFirefWindow;
        #endregion
    }
    
    /// <summary>
    /// Parameters to be passed into 'testMethod1'
    /// </summary>
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class testMethod1Params
    {
        
        #region Fields
        /// <summary>
        /// Launch '%ProgramFiles%\Mozilla Firefox\firefox.exe'
        /// </summary>
        public string UIHomePageMozillaFirefWindowExePath = "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe";
        
        /// <summary>
        /// Launch '%ProgramFiles%\Mozilla Firefox\firefox.exe'
        /// </summary>
        public string UIHomePageMozillaFirefWindowAlternateExePath = "%ProgramFiles%\\Mozilla Firefox\\firefox.exe";
        
        /// <summary>
        /// Type 'James' in 'Unknown Name' text box
        /// </summary>
        public string UIItemEditText = "James";
        
        /// <summary>
        /// Type 'Green' in 'Unknown Name' text box
        /// </summary>
        public string UIItemEdit1Text = "Green";
        
        /// <summary>
        /// Type '{Tab}' in 'Unknown Name' text box
        /// </summary>
        public string UIItemEdit1SendKeys = "{Tab}";
        
        /// <summary>
        /// Select 'Unknown Name' check box
        /// </summary>
        public bool UIItemCheckBoxChecked = true;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UIHomePageMozillaFirefWindow : WinWindow
    {
        
        public UIHomePageMozillaFirefWindow()
        {
            #region Search Criteria
            this.SearchProperties[WinWindow.PropertyNames.Name] = "Home Page - Mozilla Firefox";
            this.SearchProperties[WinWindow.PropertyNames.ClassName] = "MozillaWindowClass";
            this.WindowTitles.Add("Home Page - Mozilla Firefox");
            this.WindowTitles.Add("Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public UIHomePageDocument UIHomePageDocument
        {
            get
            {
                if ((this.mUIHomePageDocument == null))
                {
                    this.mUIHomePageDocument = new UIHomePageDocument(this);
                }
                return this.mUIHomePageDocument;
            }
        }
        
        public UICreateButton UICreateButton
        {
            get
            {
                if ((this.mUICreateButton == null))
                {
                    this.mUICreateButton = new UICreateButton(this);
                }
                return this.mUICreateButton;
            }
        }
        
        public WinControl UIHomePageMozillaFirefApplication
        {
            get
            {
                if ((this.mUIHomePageMozillaFirefApplication == null))
                {
                    this.mUIHomePageMozillaFirefApplication = new WinControl(this);
                    #region Search Criteria
                    this.mUIHomePageMozillaFirefApplication.SearchProperties[UITestControl.PropertyNames.Name] = "Home Page - Mozilla Firefox";
                    this.mUIHomePageMozillaFirefApplication.SearchProperties[UITestControl.PropertyNames.ControlType] = "Application";
                    this.mUIHomePageMozillaFirefApplication.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIHomePageMozillaFirefApplication;
            }
        }
        
        public UIItemCell UIItemCell
        {
            get
            {
                if ((this.mUIItemCell == null))
                {
                    this.mUIItemCell = new UIItemCell(this);
                }
                return this.mUIItemCell;
            }
        }
        
        public UIInsertHyperlink UIInsertHyperlink
        {
            get
            {
                if ((this.mUIInsertHyperlink == null))
                {
                    this.mUIInsertHyperlink = new UIInsertHyperlink(this);
                }
                return this.mUIInsertHyperlink;
            }
        }
        
        public UIItemMenuBar UIItemMenuBar
        {
            get
            {
                if ((this.mUIItemMenuBar == null))
                {
                    this.mUIItemMenuBar = new UIItemMenuBar(this);
                }
                return this.mUIItemMenuBar;
            }
        }
        
        public UICreateStudentHyperlink UICreateStudentHyperlink
        {
            get
            {
                if ((this.mUICreateStudentHyperlink == null))
                {
                    this.mUICreateStudentHyperlink = new UICreateStudentHyperlink(this);
                }
                return this.mUICreateStudentHyperlink;
            }
        }
        #endregion
        
        #region Fields
        private UIHomePageDocument mUIHomePageDocument;
        
        private UICreateButton mUICreateButton;
        
        private WinControl mUIHomePageMozillaFirefApplication;
        
        private UIItemCell mUIItemCell;
        
        private UIInsertHyperlink mUIInsertHyperlink;
        
        private UIItemMenuBar mUIItemMenuBar;
        
        private UICreateStudentHyperlink mUICreateStudentHyperlink;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UIHomePageDocument : WinControl
    {
        
        public UIHomePageDocument(UITestControl searchLimitContainer) : 
                base(searchLimitContainer)
        {
            #region Search Criteria
            this.SearchProperties[UITestControl.PropertyNames.Name] = "Home Page";
            this.SearchProperties[UITestControl.PropertyNames.ControlType] = "Document";
            this.WindowTitles.Add("Home Page - Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public WinEdit UIItemEdit
        {
            get
            {
                if ((this.mUIItemEdit == null))
                {
                    this.mUIItemEdit = new WinEdit(this);
                    #region Search Criteria
                    this.mUIItemEdit.SearchProperties[WinEdit.PropertyNames.Instance] = "2";
                    this.mUIItemEdit.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIItemEdit;
            }
        }
        
        public WinEdit UIItemEdit1
        {
            get
            {
                if ((this.mUIItemEdit1 == null))
                {
                    this.mUIItemEdit1 = new WinEdit(this);
                    #region Search Criteria
                    this.mUIItemEdit1.SearchProperties[WinEdit.PropertyNames.Instance] = "2";
                    this.mUIItemEdit1.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIItemEdit1;
            }
        }
        #endregion
        
        #region Fields
        private WinEdit mUIItemEdit;
        
        private WinEdit mUIItemEdit1;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UICreateButton : WinButton
    {
        
        public UICreateButton(UITestControl searchLimitContainer) : 
                base(searchLimitContainer)
        {
            #region Search Criteria
            this.SearchProperties[WinButton.PropertyNames.Name] = "Create";
            this.WindowTitles.Add("Home Page - Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public WinEdit UICreateEdit
        {
            get
            {
                if ((this.mUICreateEdit == null))
                {
                    this.mUICreateEdit = new WinEdit(this);
                    #region Search Criteria
                    this.mUICreateEdit.SearchProperties[WinEdit.PropertyNames.Name] = "Create";
                    this.mUICreateEdit.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUICreateEdit;
            }
        }
        #endregion
        
        #region Fields
        private WinEdit mUICreateEdit;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UIItemCell : WinCell
    {
        
        public UIItemCell(UITestControl searchLimitContainer) : 
                base(searchLimitContainer)
        {
            #region Search Criteria
            this.WindowTitles.Add("Home Page - Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public WinEdit UIItemEdit
        {
            get
            {
                if ((this.mUIItemEdit == null))
                {
                    this.mUIItemEdit = new WinEdit(this);
                    #region Search Criteria
                    this.mUIItemEdit.SearchProperties[WinEdit.PropertyNames.Instance] = "2";
                    this.mUIItemEdit.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIItemEdit;
            }
        }
        
        public WinEdit UIItemEdit1
        {
            get
            {
                if ((this.mUIItemEdit1 == null))
                {
                    this.mUIItemEdit1 = new WinEdit(this);
                    #region Search Criteria
                    this.mUIItemEdit1.SearchProperties[WinEdit.PropertyNames.Instance] = "4";
                    this.mUIItemEdit1.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIItemEdit1;
            }
        }
        
        public WinCheckBox UIItemCheckBox
        {
            get
            {
                if ((this.mUIItemCheckBox == null))
                {
                    this.mUIItemCheckBox = new WinCheckBox(this);
                    #region Search Criteria
                    this.mUIItemCheckBox.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIItemCheckBox;
            }
        }
        #endregion
        
        #region Fields
        private WinEdit mUIItemEdit;
        
        private WinEdit mUIItemEdit1;
        
        private WinCheckBox mUIItemCheckBox;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UIInsertHyperlink : WinHyperlink
    {
        
        public UIInsertHyperlink(UITestControl searchLimitContainer) : 
                base(searchLimitContainer)
        {
            #region Search Criteria
            this.SearchProperties[WinHyperlink.PropertyNames.Name] = "Insert";
            this.WindowTitles.Add("Home Page - Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public WinEdit UIInsertEdit
        {
            get
            {
                if ((this.mUIInsertEdit == null))
                {
                    this.mUIInsertEdit = new WinEdit(this);
                    #region Search Criteria
                    this.mUIInsertEdit.SearchProperties[WinEdit.PropertyNames.Name] = "Insert";
                    this.mUIInsertEdit.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUIInsertEdit;
            }
        }
        #endregion
        
        #region Fields
        private WinEdit mUIInsertEdit;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UIItemMenuBar : WinMenuBar
    {
        
        public UIItemMenuBar(UITestControl searchLimitContainer) : 
                base(searchLimitContainer)
        {
            #region Search Criteria
            this.WindowTitles.Add("Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public WinMenuItem UINewStudentMenuItem
        {
            get
            {
                if ((this.mUINewStudentMenuItem == null))
                {
                    this.mUINewStudentMenuItem = new WinMenuItem(this);
                    #region Search Criteria
                    this.mUINewStudentMenuItem.SearchProperties[WinMenuItem.PropertyNames.Name] = "New Student";
                    this.mUINewStudentMenuItem.WindowTitles.Add("Mozilla Firefox");
                    #endregion
                }
                return this.mUINewStudentMenuItem;
            }
        }
        #endregion
        
        #region Fields
        private WinMenuItem mUINewStudentMenuItem;
        #endregion
    }
    
    [GeneratedCode("Coded UITest Builder", "10.0.40219.1")]
    public class UICreateStudentHyperlink : WinHyperlink
    {
        
        public UICreateStudentHyperlink(UITestControl searchLimitContainer) : 
                base(searchLimitContainer)
        {
            #region Search Criteria
            this.SearchProperties[WinHyperlink.PropertyNames.Name] = "Create Student";
            this.WindowTitles.Add("Home Page - Mozilla Firefox");
            #endregion
        }
        
        #region Properties
        public WinEdit UICreateStudentEdit
        {
            get
            {
                if ((this.mUICreateStudentEdit == null))
                {
                    this.mUICreateStudentEdit = new WinEdit(this);
                    #region Search Criteria
                    this.mUICreateStudentEdit.SearchProperties[WinEdit.PropertyNames.Name] = "Create Student";
                    this.mUICreateStudentEdit.WindowTitles.Add("Home Page - Mozilla Firefox");
                    #endregion
                }
                return this.mUICreateStudentEdit;
            }
        }
        #endregion
        
        #region Fields
        private WinEdit mUICreateStudentEdit;
        #endregion
    }
}
